(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun c_ack!93 () (_ BitVec 64))
(declare-fun b_ack!92 () (_ BitVec 64))
(declare-fun a_ack!94 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!94))
                           ((_ to_fp 11 53) a_ack!94))
                   ((_ to_fp 11 53) a_ack!94))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!94))
                           ((_ to_fp 11 53) b_ack!92)))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.add roundNearestTiesToEven
            a!2
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x403b000000000000)
                    ((_ to_fp 11 53) c_ack!93)))
    #x404b000000000000))))

(check-sat)
(exit)
