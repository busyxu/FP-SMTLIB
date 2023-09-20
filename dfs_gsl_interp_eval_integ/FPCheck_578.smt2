(declare-fun x1_ack!7294 () (_ BitVec 64))
(declare-fun x0_ack!7300 () (_ BitVec 64))
(declare-fun x2_ack!7295 () (_ BitVec 64))
(declare-fun b_ack!7299 () (_ BitVec 64))
(declare-fun a_ack!7298 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!7296 () (_ BitVec 64))
(declare-fun y1_ack!7297 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7300) ((_ to_fp 11 53) x1_ack!7294)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7294) ((_ to_fp 11 53) x2_ack!7295)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7294)
                       ((_ to_fp 11 53) x0_ack!7300))
               ((_ to_fp 11 53) x0_ack!7300))
       ((_ to_fp 11 53) x1_ack!7294)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7294)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7294)
                       ((_ to_fp 11 53) x0_ack!7300)))
       ((_ to_fp 11 53) x0_ack!7300)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7295)
                       ((_ to_fp 11 53) x1_ack!7294))
               ((_ to_fp 11 53) x1_ack!7294))
       ((_ to_fp 11 53) x2_ack!7295)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7295)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7295)
                       ((_ to_fp 11 53) x1_ack!7294)))
       ((_ to_fp 11 53) x1_ack!7294)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7294)
                    ((_ to_fp 11 53) x0_ack!7300))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7295)
                    ((_ to_fp 11 53) x1_ack!7294))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7298) ((_ to_fp 11 53) b_ack!7299))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7298) ((_ to_fp 11 53) x0_ack!7300))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7299) ((_ to_fp 11 53) x2_ack!7295))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7298) ((_ to_fp 11 53) b_ack!7299))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7298) ((_ to_fp 11 53) x0_ack!7300))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7298) ((_ to_fp 11 53) x1_ack!7294))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7299) ((_ to_fp 11 53) x0_ack!7300)))
(assert (FPCHECK_FSUB_UNDERFLOW y1_ack!7297 y0_ack!7296))

(check-sat)
(exit)
