(declare-fun d_ack!318 () (_ BitVec 64))
(declare-fun b_ack!317 () (_ BitVec 32))
(declare-fun a_ack!320 () (_ BitVec 64))
(declare-fun c_ack!319 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!318) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000000 b_ack!317)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!320) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!319)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!319)
                                   ((_ to_fp 11 53) c_ack!319)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!319)
                                   ((_ to_fp 11 53) c_ack!319))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x3feffffffffff950)
            (fp.mul roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000)))
    (fp.mul roundNearestTiesToEven a!2 ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
