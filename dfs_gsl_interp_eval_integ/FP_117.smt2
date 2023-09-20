(declare-fun x1_ack!7225 () (_ BitVec 64))
(declare-fun x0_ack!7229 () (_ BitVec 64))
(declare-fun x2_ack!7226 () (_ BitVec 64))
(declare-fun b_ack!7228 () (_ BitVec 64))
(declare-fun a_ack!7227 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7229) ((_ to_fp 11 53) x1_ack!7225)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7225) ((_ to_fp 11 53) x2_ack!7226)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7225)
                       ((_ to_fp 11 53) x0_ack!7229))
               ((_ to_fp 11 53) x0_ack!7229))
       ((_ to_fp 11 53) x1_ack!7225)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7225)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7225)
                       ((_ to_fp 11 53) x0_ack!7229)))
       ((_ to_fp 11 53) x0_ack!7229)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7226)
                       ((_ to_fp 11 53) x1_ack!7225))
               ((_ to_fp 11 53) x1_ack!7225))
       ((_ to_fp 11 53) x2_ack!7226)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7226)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7226)
                       ((_ to_fp 11 53) x1_ack!7225)))
       ((_ to_fp 11 53) x1_ack!7225)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7225)
                    ((_ to_fp 11 53) x0_ack!7229))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7226)
                    ((_ to_fp 11 53) x1_ack!7225))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7227) ((_ to_fp 11 53) b_ack!7228))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7227) ((_ to_fp 11 53) x0_ack!7229))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7228) ((_ to_fp 11 53) x2_ack!7226))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7227) ((_ to_fp 11 53) b_ack!7228))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7227) ((_ to_fp 11 53) x0_ack!7229))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7227) ((_ to_fp 11 53) x1_ack!7225)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7225) ((_ to_fp 11 53) a_ack!7227))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7228) ((_ to_fp 11 53) x1_ack!7225))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!7228) ((_ to_fp 11 53) x2_ack!7226))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7226)
                    ((_ to_fp 11 53) x1_ack!7225))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
