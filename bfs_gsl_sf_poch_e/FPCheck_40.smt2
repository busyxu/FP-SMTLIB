(declare-fun b_ack!154 () (_ BitVec 64))
(declare-fun a_ack!155 () (_ BitVec 64))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!154) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!154) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!155) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!155) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!155) (CF_floor a_ack!155)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!155)
                    ((_ to_fp 11 53) b_ack!154))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!155)
               ((_ to_fp 11 53) b_ack!154))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) a_ack!155))
  #x3ff0000000000000))

(check-sat)
(exit)
