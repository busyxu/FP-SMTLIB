(declare-fun x1_ack!7619 () (_ BitVec 64))
(declare-fun x0_ack!7623 () (_ BitVec 64))
(declare-fun x2_ack!7620 () (_ BitVec 64))
(declare-fun b_ack!7622 () (_ BitVec 64))
(declare-fun a_ack!7621 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7623) ((_ to_fp 11 53) x1_ack!7619)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7619) ((_ to_fp 11 53) x2_ack!7620)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7619)
                       ((_ to_fp 11 53) x0_ack!7623))
               ((_ to_fp 11 53) x0_ack!7623))
       ((_ to_fp 11 53) x1_ack!7619)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7619)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7619)
                       ((_ to_fp 11 53) x0_ack!7623)))
       ((_ to_fp 11 53) x0_ack!7623)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7620)
                       ((_ to_fp 11 53) x1_ack!7619))
               ((_ to_fp 11 53) x1_ack!7619))
       ((_ to_fp 11 53) x2_ack!7620)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7620)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7620)
                       ((_ to_fp 11 53) x1_ack!7619)))
       ((_ to_fp 11 53) x1_ack!7619)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7619)
                    ((_ to_fp 11 53) x0_ack!7623))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7620)
                    ((_ to_fp 11 53) x1_ack!7619))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7621) ((_ to_fp 11 53) b_ack!7622))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7621) ((_ to_fp 11 53) x0_ack!7623))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7622) ((_ to_fp 11 53) x2_ack!7620))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7621) ((_ to_fp 11 53) b_ack!7622))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7621) ((_ to_fp 11 53) x0_ack!7623))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7621) ((_ to_fp 11 53) x1_ack!7619))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7622) ((_ to_fp 11 53) x0_ack!7623)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7619)
                    ((_ to_fp 11 53) x0_ack!7623))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7619)
          ((_ to_fp 11 53) x0_ack!7623))))

(check-sat)
(exit)
