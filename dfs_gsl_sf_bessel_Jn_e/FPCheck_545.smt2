(declare-fun a_ack!1577 () (_ BitVec 32))
(declare-fun b_ack!1576 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1577 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1576) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!1577))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1576))
            ((_ to_fp 11 53) #x3e60000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) b_ack!1576))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4040000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!1576))
                           (fp.abs ((_ to_fp 11 53) b_ack!1576))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
  (FPCHECK_FSUB_ACCURACY a!2 #x3ff0000000000000))))

(check-sat)
(exit)
