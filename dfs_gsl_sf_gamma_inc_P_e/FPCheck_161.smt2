(declare-fun a_ack!544 () (_ BitVec 64))
(declare-fun b_ack!543 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!543) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!543) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!543) ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!544) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!543)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!544))))
(assert (FPCHECK_FSUB_UNDERFLOW
  (CF_log (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!543)
                  ((_ to_fp 11 53) a_ack!544)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!543)
          ((_ to_fp 11 53) a_ack!544))))

(check-sat)
(exit)
