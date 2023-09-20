(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun c_ack!133 () (_ BitVec 64))
(declare-fun b_ack!132 () (_ BitVec 64))
(declare-fun a_ack!134 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!134))
                           ((_ to_fp 11 53) a_ack!134))
                   ((_ to_fp 11 53) a_ack!134))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!134))
                           ((_ to_fp 11 53) b_ack!132)))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x403b000000000000)
                                   ((_ to_fp 11 53) c_ack!133)))
                   ((_ to_fp 11 53) #x404b000000000000))))
  (FPCHECK_FMUL_ACCURACY a!3 a!3)))))

(check-sat)
(exit)
