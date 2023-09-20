(declare-fun x1_ack!7315 () (_ BitVec 64))
(declare-fun x0_ack!7319 () (_ BitVec 64))
(declare-fun x2_ack!7316 () (_ BitVec 64))
(declare-fun b_ack!7318 () (_ BitVec 64))
(declare-fun a_ack!7317 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7319) ((_ to_fp 11 53) x1_ack!7315)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7315) ((_ to_fp 11 53) x2_ack!7316)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7315)
                       ((_ to_fp 11 53) x0_ack!7319))
               ((_ to_fp 11 53) x0_ack!7319))
       ((_ to_fp 11 53) x1_ack!7315)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7315)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7315)
                       ((_ to_fp 11 53) x0_ack!7319)))
       ((_ to_fp 11 53) x0_ack!7319)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7316)
                       ((_ to_fp 11 53) x1_ack!7315))
               ((_ to_fp 11 53) x1_ack!7315))
       ((_ to_fp 11 53) x2_ack!7316)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7316)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7316)
                       ((_ to_fp 11 53) x1_ack!7315)))
       ((_ to_fp 11 53) x1_ack!7315)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7315)
                    ((_ to_fp 11 53) x0_ack!7319))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7316)
                    ((_ to_fp 11 53) x1_ack!7315))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7317) ((_ to_fp 11 53) b_ack!7318))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7317) ((_ to_fp 11 53) x0_ack!7319))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7318) ((_ to_fp 11 53) x2_ack!7316))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7317) ((_ to_fp 11 53) b_ack!7318))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7317) ((_ to_fp 11 53) x0_ack!7319))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7317) ((_ to_fp 11 53) x1_ack!7315))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7318) ((_ to_fp 11 53) x0_ack!7319)))

(check-sat)
(exit)
