(declare-fun a_ack!6 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!6) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6) ((_ to_fp 11 53) #x0004000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!6)) ((_ to_fp 11 53) #x3f20000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!6))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6)
                       ((_ to_fp 11 53) a_ack!6))
               ((_ to_fp 11 53) a_ack!6))
       ((_ to_fp 11 53) a_ack!6)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!6))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!6)
                       ((_ to_fp 11 53) a_ack!6))
               ((_ to_fp 11 53) a_ack!6))
       ((_ to_fp 11 53) a_ack!6)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6)
          ((_ to_fp 11 53) a_ack!6))))

(check-sat)
(exit)
