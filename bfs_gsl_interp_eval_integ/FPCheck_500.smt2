(declare-fun x1_ack!6273 () (_ BitVec 64))
(declare-fun x0_ack!6277 () (_ BitVec 64))
(declare-fun x2_ack!6274 () (_ BitVec 64))
(declare-fun b_ack!6276 () (_ BitVec 64))
(declare-fun a_ack!6275 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6277) ((_ to_fp 11 53) x1_ack!6273)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6273) ((_ to_fp 11 53) x2_ack!6274)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6273)
                       ((_ to_fp 11 53) x0_ack!6277))
               ((_ to_fp 11 53) x0_ack!6277))
       ((_ to_fp 11 53) x1_ack!6273)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6273)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6273)
                       ((_ to_fp 11 53) x0_ack!6277)))
       ((_ to_fp 11 53) x0_ack!6277)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6274)
                       ((_ to_fp 11 53) x1_ack!6273))
               ((_ to_fp 11 53) x1_ack!6273))
       ((_ to_fp 11 53) x2_ack!6274)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6274)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6274)
                       ((_ to_fp 11 53) x1_ack!6273)))
       ((_ to_fp 11 53) x1_ack!6273)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6273)
                    ((_ to_fp 11 53) x0_ack!6277))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6274)
                    ((_ to_fp 11 53) x1_ack!6273))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6275) ((_ to_fp 11 53) b_ack!6276))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6275) ((_ to_fp 11 53) x0_ack!6277))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6276) ((_ to_fp 11 53) x2_ack!6274))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6275) ((_ to_fp 11 53) b_ack!6276))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6275) ((_ to_fp 11 53) x0_ack!6277))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6275) ((_ to_fp 11 53) x1_ack!6273))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6276) ((_ to_fp 11 53) x0_ack!6277))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6276) ((_ to_fp 11 53) x1_ack!6273)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6273) ((_ to_fp 11 53) b_ack!6276))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6273)
                    ((_ to_fp 11 53) x0_ack!6277))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY x1_ack!6273 a_ack!6275))

(check-sat)
(exit)
