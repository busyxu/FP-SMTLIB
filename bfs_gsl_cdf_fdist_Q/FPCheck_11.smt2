(declare-fun nu1_ack!63 () (_ BitVec 64))
(declare-fun nu2_ack!64 () (_ BitVec 64))
(declare-fun x_ack!65 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (and (fp.eq ((_ to_fp 11 53) nu2_ack!64)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) nu1_ack!63)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!65)
            (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu2_ack!64)
                    ((_ to_fp 11 53) nu1_ack!63)))))
(assert (FPCHECK_FDIV_ZERO
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) nu2_ack!64)
          ((_ to_fp 11 53) nu1_ack!63))
  (fp.add roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu2_ack!64)
                  ((_ to_fp 11 53) nu1_ack!63))
          ((_ to_fp 11 53) x_ack!65))))

(check-sat)
(exit)
