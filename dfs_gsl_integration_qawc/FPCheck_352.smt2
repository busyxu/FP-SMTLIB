(declare-fun limit_ack!5486 () (_ BitVec 64))
(declare-fun a_ack!5487 () (_ BitVec 64))
(declare-fun b_ack!5483 () (_ BitVec 64))
(declare-fun epsabs_ack!5485 () (_ BitVec 64))
(declare-fun c_ack!5484 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5486)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5483) ((_ to_fp 11 53) a_ack!5487))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5485)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5484) ((_ to_fp 11 53) a_ack!5487))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5484) ((_ to_fp 11 53) b_ack!5483))))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.sub roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!5484))
          ((_ to_fp 11 53) b_ack!5483))
  a_ack!5487))

(check-sat)
(exit)
