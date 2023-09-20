(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!90 () (_ BitVec 64))
(declare-fun b_ack!89 () (_ BitVec 64))
(declare-fun a_ack!91 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!91))
                           ((_ to_fp 11 53) a_ack!91))
                   ((_ to_fp 11 53) a_ack!91))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!91))
                           ((_ to_fp 11 53) b_ack!89)))))
  (FPCHECK_FDIV_OVERFLOW
    (fp.add roundNearestTiesToEven
            a!2
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x403b000000000000)
                    ((_ to_fp 11 53) c_ack!90)))
    #x404b000000000000))))

(check-sat)
(exit)
