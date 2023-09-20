(declare-fun x1_ack!2713 () (_ BitVec 64))
(declare-fun x0_ack!2717 () (_ BitVec 64))
(declare-fun x2_ack!2714 () (_ BitVec 64))
(declare-fun b_ack!2716 () (_ BitVec 64))
(declare-fun a_ack!2715 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2717) ((_ to_fp 11 53) x1_ack!2713)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2713) ((_ to_fp 11 53) x2_ack!2714)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2713)
                       ((_ to_fp 11 53) x0_ack!2717))
               ((_ to_fp 11 53) x0_ack!2717))
       ((_ to_fp 11 53) x1_ack!2713)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2713)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2713)
                       ((_ to_fp 11 53) x0_ack!2717)))
       ((_ to_fp 11 53) x0_ack!2717)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2714)
                       ((_ to_fp 11 53) x1_ack!2713))
               ((_ to_fp 11 53) x1_ack!2713))
       ((_ to_fp 11 53) x2_ack!2714)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2714)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2714)
                       ((_ to_fp 11 53) x1_ack!2713)))
       ((_ to_fp 11 53) x1_ack!2713)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2713)
                    ((_ to_fp 11 53) x0_ack!2717))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2714)
                    ((_ to_fp 11 53) x1_ack!2713))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2715) ((_ to_fp 11 53) b_ack!2716))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2715) ((_ to_fp 11 53) x0_ack!2717))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2716) ((_ to_fp 11 53) x2_ack!2714))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2715) ((_ to_fp 11 53) b_ack!2716))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2715) ((_ to_fp 11 53) x0_ack!2717))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2715) ((_ to_fp 11 53) x1_ack!2713)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2713) ((_ to_fp 11 53) a_ack!2715))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2716) ((_ to_fp 11 53) x1_ack!2713))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2716) ((_ to_fp 11 53) x2_ack!2714))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2714)
                    ((_ to_fp 11 53) x1_ack!2713))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2715)
          ((_ to_fp 11 53) x1_ack!2713))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!2715)
          ((_ to_fp 11 53) x1_ack!2713))))

(check-sat)
(exit)
