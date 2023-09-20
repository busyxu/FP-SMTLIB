(declare-fun x1_ack!6226 () (_ BitVec 64))
(declare-fun x0_ack!6230 () (_ BitVec 64))
(declare-fun x2_ack!6227 () (_ BitVec 64))
(declare-fun b_ack!6229 () (_ BitVec 64))
(declare-fun a_ack!6228 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6230) ((_ to_fp 11 53) x1_ack!6226)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6226) ((_ to_fp 11 53) x2_ack!6227)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6226)
                       ((_ to_fp 11 53) x0_ack!6230))
               ((_ to_fp 11 53) x0_ack!6230))
       ((_ to_fp 11 53) x1_ack!6226)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6226)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6226)
                       ((_ to_fp 11 53) x0_ack!6230)))
       ((_ to_fp 11 53) x0_ack!6230)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6227)
                       ((_ to_fp 11 53) x1_ack!6226))
               ((_ to_fp 11 53) x1_ack!6226))
       ((_ to_fp 11 53) x2_ack!6227)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6227)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6227)
                       ((_ to_fp 11 53) x1_ack!6226)))
       ((_ to_fp 11 53) x1_ack!6226)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6226)
                    ((_ to_fp 11 53) x0_ack!6230))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6227)
                    ((_ to_fp 11 53) x1_ack!6226))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6228) ((_ to_fp 11 53) b_ack!6229))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6228) ((_ to_fp 11 53) x0_ack!6230))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6229) ((_ to_fp 11 53) x2_ack!6227))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6228) ((_ to_fp 11 53) b_ack!6229))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6228) ((_ to_fp 11 53) x0_ack!6230))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6228) ((_ to_fp 11 53) x1_ack!6226)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6226) ((_ to_fp 11 53) a_ack!6228))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6229) ((_ to_fp 11 53) x1_ack!6226))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6229) ((_ to_fp 11 53) x2_ack!6227))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6227)
                    ((_ to_fp 11 53) x1_ack!6226))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!6227)
          ((_ to_fp 11 53) x1_ack!6226))))

(check-sat)
(exit)
