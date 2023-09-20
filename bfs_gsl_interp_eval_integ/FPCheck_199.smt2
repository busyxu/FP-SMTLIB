(declare-fun x1_ack!2339 () (_ BitVec 64))
(declare-fun x0_ack!2343 () (_ BitVec 64))
(declare-fun x2_ack!2340 () (_ BitVec 64))
(declare-fun b_ack!2342 () (_ BitVec 64))
(declare-fun a_ack!2341 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2343) ((_ to_fp 11 53) x1_ack!2339)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2339) ((_ to_fp 11 53) x2_ack!2340)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2339)
                       ((_ to_fp 11 53) x0_ack!2343))
               ((_ to_fp 11 53) x0_ack!2343))
       ((_ to_fp 11 53) x1_ack!2339)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2339)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2339)
                       ((_ to_fp 11 53) x0_ack!2343)))
       ((_ to_fp 11 53) x0_ack!2343)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2340)
                       ((_ to_fp 11 53) x1_ack!2339))
               ((_ to_fp 11 53) x1_ack!2339))
       ((_ to_fp 11 53) x2_ack!2340)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2340)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2340)
                       ((_ to_fp 11 53) x1_ack!2339)))
       ((_ to_fp 11 53) x1_ack!2339)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2339)
                    ((_ to_fp 11 53) x0_ack!2343))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2340)
                    ((_ to_fp 11 53) x1_ack!2339))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2341) ((_ to_fp 11 53) b_ack!2342))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2341) ((_ to_fp 11 53) x0_ack!2343))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2342) ((_ to_fp 11 53) x2_ack!2340))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2341) ((_ to_fp 11 53) b_ack!2342))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2341) ((_ to_fp 11 53) x0_ack!2343))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2341) ((_ to_fp 11 53) x1_ack!2339)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2339) ((_ to_fp 11 53) a_ack!2341))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2342) ((_ to_fp 11 53) x1_ack!2339))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2342) ((_ to_fp 11 53) x2_ack!2340))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2340)
                    ((_ to_fp 11 53) x1_ack!2339))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!2340)
          ((_ to_fp 11 53) x1_ack!2339))))

(check-sat)
(exit)
