(declare-fun x1_ack!2097 () (_ BitVec 64))
(declare-fun x0_ack!2101 () (_ BitVec 64))
(declare-fun x2_ack!2098 () (_ BitVec 64))
(declare-fun b_ack!2100 () (_ BitVec 64))
(declare-fun a_ack!2099 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2101) ((_ to_fp 11 53) x1_ack!2097)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2097) ((_ to_fp 11 53) x2_ack!2098)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2097)
                       ((_ to_fp 11 53) x0_ack!2101))
               ((_ to_fp 11 53) x0_ack!2101))
       ((_ to_fp 11 53) x1_ack!2097)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2097)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2097)
                       ((_ to_fp 11 53) x0_ack!2101)))
       ((_ to_fp 11 53) x0_ack!2101)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2098)
                       ((_ to_fp 11 53) x1_ack!2097))
               ((_ to_fp 11 53) x1_ack!2097))
       ((_ to_fp 11 53) x2_ack!2098)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2098)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2098)
                       ((_ to_fp 11 53) x1_ack!2097)))
       ((_ to_fp 11 53) x1_ack!2097)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2097)
                    ((_ to_fp 11 53) x0_ack!2101))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2098)
                    ((_ to_fp 11 53) x1_ack!2097))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2099) ((_ to_fp 11 53) b_ack!2100))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2099) ((_ to_fp 11 53) x0_ack!2101))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2100) ((_ to_fp 11 53) x2_ack!2098))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2099) ((_ to_fp 11 53) b_ack!2100))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2099) ((_ to_fp 11 53) x0_ack!2101))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2099) ((_ to_fp 11 53) x1_ack!2097))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2100) ((_ to_fp 11 53) x0_ack!2101))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2100) ((_ to_fp 11 53) x1_ack!2097)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2097) ((_ to_fp 11 53) b_ack!2100))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2097)
                    ((_ to_fp 11 53) x0_ack!2101))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2098)
                    ((_ to_fp 11 53) x1_ack!2097))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!2098)
          ((_ to_fp 11 53) x1_ack!2097))))

(check-sat)
(exit)
