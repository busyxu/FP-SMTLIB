(declare-fun b_ack!15 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!15) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!15) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!15) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!15))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!15)
                       ((_ to_fp 11 53) b_ack!15))
               ((_ to_fp 11 53) b_ack!15))
       ((_ to_fp 11 53) b_ack!15)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!15))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!15)
                       ((_ to_fp 11 53) b_ack!15))
               ((_ to_fp 11 53) b_ack!15))
       ((_ to_fp 11 53) b_ack!15)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!15)
          ((_ to_fp 11 53) b_ack!15))
  #x3d9d141fcb837472))

(check-sat)
(exit)
