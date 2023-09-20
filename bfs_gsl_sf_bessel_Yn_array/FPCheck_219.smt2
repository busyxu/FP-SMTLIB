(declare-fun a_ack!898 () (_ BitVec 32))
(declare-fun b_ack!896 () (_ BitVec 32))
(declare-fun c_ack!897 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!898 #x00000000)))
(assert (not (bvslt b_ack!896 a_ack!898)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!897) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!898 #x00000000)))
(assert (= #x00000000 a_ack!898))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!897) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!897) ((_ to_fp 11 53) #x4010000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!897))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc0000000000000)
                                   ((_ to_fp 11 53) c_ack!897))
                           ((_ to_fp 11 53) c_ack!897))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #xbff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FSUB_OVERFLOW a!3 #x0000000000000000)))))

(check-sat)
(exit)
