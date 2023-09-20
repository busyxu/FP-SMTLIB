(declare-fun b_ack!44 () (_ BitVec 64))
(declare-fun a_ack!45 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!44) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!44)
                    ((_ to_fp 11 53) a_ack!45))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!44)
                    ((_ to_fp 11 53) a_ack!45))
            ((_ to_fp 11 53) #xc014000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!44)
               ((_ to_fp 11 53) a_ack!45))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!45))
  (fp.abs ((_ to_fp 11 53) b_ack!44))))

(check-sat)
(exit)
