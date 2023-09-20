(declare-fun a_ack!215 () (_ BitVec 32))
(declare-fun b_ack!213 () (_ BitVec 32))
(declare-fun c_ack!214 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!215 #x00000000)))
(assert (not (bvslt b_ack!213 a_ack!215)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!214) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!213))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!214) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!214) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!214) ((_ to_fp 11 53) #x4020000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) c_ack!214))
                           ((_ to_fp 11 53) #x4022000000000000))
                   ((_ to_fp 11 53) #x401c000000000000))))
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
  (FPCHECK_FADD_UNDERFLOW
    #x0000000000000000
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    (fp.abs a!3)
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x3c83ae487d34b2ac)))))))

(check-sat)
(exit)
