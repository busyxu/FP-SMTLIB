(declare-fun x1_ack!6263 () (_ BitVec 64))
(declare-fun x0_ack!6267 () (_ BitVec 64))
(declare-fun x2_ack!6264 () (_ BitVec 64))
(declare-fun b_ack!6266 () (_ BitVec 64))
(declare-fun a_ack!6265 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6267) ((_ to_fp 11 53) x1_ack!6263)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6263) ((_ to_fp 11 53) x2_ack!6264)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6263)
                       ((_ to_fp 11 53) x0_ack!6267))
               ((_ to_fp 11 53) x0_ack!6267))
       ((_ to_fp 11 53) x1_ack!6263)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6263)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6263)
                       ((_ to_fp 11 53) x0_ack!6267)))
       ((_ to_fp 11 53) x0_ack!6267)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6264)
                       ((_ to_fp 11 53) x1_ack!6263))
               ((_ to_fp 11 53) x1_ack!6263))
       ((_ to_fp 11 53) x2_ack!6264)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6264)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6264)
                       ((_ to_fp 11 53) x1_ack!6263)))
       ((_ to_fp 11 53) x1_ack!6263)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6263)
                    ((_ to_fp 11 53) x0_ack!6267))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6264)
                    ((_ to_fp 11 53) x1_ack!6263))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6265) ((_ to_fp 11 53) b_ack!6266))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6265) ((_ to_fp 11 53) x0_ack!6267))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6266) ((_ to_fp 11 53) x2_ack!6264))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6265) ((_ to_fp 11 53) b_ack!6266))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6265) ((_ to_fp 11 53) x0_ack!6267))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6265) ((_ to_fp 11 53) x1_ack!6263))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6266) ((_ to_fp 11 53) x0_ack!6267))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6266) ((_ to_fp 11 53) x1_ack!6263)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6263) ((_ to_fp 11 53) b_ack!6266))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6263)
                    ((_ to_fp 11 53) x0_ack!6267))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW x1_ack!6263 a_ack!6265))

(check-sat)
(exit)
