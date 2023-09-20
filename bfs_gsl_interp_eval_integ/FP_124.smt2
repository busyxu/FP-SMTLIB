(declare-fun x1_ack!7262 () (_ BitVec 64))
(declare-fun x0_ack!7266 () (_ BitVec 64))
(declare-fun x2_ack!7263 () (_ BitVec 64))
(declare-fun b_ack!7265 () (_ BitVec 64))
(declare-fun a_ack!7264 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7266) ((_ to_fp 11 53) x1_ack!7262)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7262) ((_ to_fp 11 53) x2_ack!7263)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7262)
                       ((_ to_fp 11 53) x0_ack!7266))
               ((_ to_fp 11 53) x0_ack!7266))
       ((_ to_fp 11 53) x1_ack!7262)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7262)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7262)
                       ((_ to_fp 11 53) x0_ack!7266)))
       ((_ to_fp 11 53) x0_ack!7266)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7263)
                       ((_ to_fp 11 53) x1_ack!7262))
               ((_ to_fp 11 53) x1_ack!7262))
       ((_ to_fp 11 53) x2_ack!7263)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7263)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7263)
                       ((_ to_fp 11 53) x1_ack!7262)))
       ((_ to_fp 11 53) x1_ack!7262)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7262)
                    ((_ to_fp 11 53) x0_ack!7266))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7263)
                    ((_ to_fp 11 53) x1_ack!7262))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7264) ((_ to_fp 11 53) b_ack!7265))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7264) ((_ to_fp 11 53) x0_ack!7266))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7265) ((_ to_fp 11 53) x2_ack!7263))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7264) ((_ to_fp 11 53) b_ack!7265))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7264) ((_ to_fp 11 53) x0_ack!7266))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7264) ((_ to_fp 11 53) x1_ack!7262))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7265) ((_ to_fp 11 53) x0_ack!7266))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7265) ((_ to_fp 11 53) x1_ack!7262)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7262) ((_ to_fp 11 53) b_ack!7265))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7262)
                    ((_ to_fp 11 53) x0_ack!7266))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7263)
                    ((_ to_fp 11 53) x1_ack!7262))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
