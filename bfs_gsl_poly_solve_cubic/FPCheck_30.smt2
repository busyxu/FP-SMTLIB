(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!70 () (_ BitVec 64))
(declare-fun b_ack!69 () (_ BitVec 64))
(declare-fun a_ack!71 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!71))
                           ((_ to_fp 11 53) a_ack!71))
                   ((_ to_fp 11 53) a_ack!71))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!71))
                           ((_ to_fp 11 53) b_ack!69)))))
  (FPCHECK_FADD_OVERFLOW
    a!2
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x403b000000000000)
            ((_ to_fp 11 53) c_ack!70))))))

(check-sat)
(exit)
