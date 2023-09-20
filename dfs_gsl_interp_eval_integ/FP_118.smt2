(declare-fun x1_ack!7270 () (_ BitVec 64))
(declare-fun x0_ack!7274 () (_ BitVec 64))
(declare-fun x2_ack!7271 () (_ BitVec 64))
(declare-fun b_ack!7273 () (_ BitVec 64))
(declare-fun a_ack!7272 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7274) ((_ to_fp 11 53) x1_ack!7270)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7270) ((_ to_fp 11 53) x2_ack!7271)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7270)
                       ((_ to_fp 11 53) x0_ack!7274))
               ((_ to_fp 11 53) x0_ack!7274))
       ((_ to_fp 11 53) x1_ack!7270)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7270)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7270)
                       ((_ to_fp 11 53) x0_ack!7274)))
       ((_ to_fp 11 53) x0_ack!7274)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7271)
                       ((_ to_fp 11 53) x1_ack!7270))
               ((_ to_fp 11 53) x1_ack!7270))
       ((_ to_fp 11 53) x2_ack!7271)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7271)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7271)
                       ((_ to_fp 11 53) x1_ack!7270)))
       ((_ to_fp 11 53) x1_ack!7270)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7270)
                    ((_ to_fp 11 53) x0_ack!7274))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7271)
                    ((_ to_fp 11 53) x1_ack!7270))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7272) ((_ to_fp 11 53) b_ack!7273))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7272) ((_ to_fp 11 53) x0_ack!7274))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7273) ((_ to_fp 11 53) x2_ack!7271))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7272) ((_ to_fp 11 53) b_ack!7273))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!7272) ((_ to_fp 11 53) x0_ack!7274)))

(check-sat)
(exit)
