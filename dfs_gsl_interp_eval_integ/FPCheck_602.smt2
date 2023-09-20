(declare-fun x1_ack!7634 () (_ BitVec 64))
(declare-fun x0_ack!7638 () (_ BitVec 64))
(declare-fun x2_ack!7635 () (_ BitVec 64))
(declare-fun b_ack!7637 () (_ BitVec 64))
(declare-fun a_ack!7636 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7638) ((_ to_fp 11 53) x1_ack!7634)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7634) ((_ to_fp 11 53) x2_ack!7635)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7634)
                       ((_ to_fp 11 53) x0_ack!7638))
               ((_ to_fp 11 53) x0_ack!7638))
       ((_ to_fp 11 53) x1_ack!7634)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7634)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7634)
                       ((_ to_fp 11 53) x0_ack!7638)))
       ((_ to_fp 11 53) x0_ack!7638)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7635)
                       ((_ to_fp 11 53) x1_ack!7634))
               ((_ to_fp 11 53) x1_ack!7634))
       ((_ to_fp 11 53) x2_ack!7635)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7635)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7635)
                       ((_ to_fp 11 53) x1_ack!7634)))
       ((_ to_fp 11 53) x1_ack!7634)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7634)
                    ((_ to_fp 11 53) x0_ack!7638))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7635)
                    ((_ to_fp 11 53) x1_ack!7634))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7636) ((_ to_fp 11 53) b_ack!7637))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7636) ((_ to_fp 11 53) x0_ack!7638))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7637) ((_ to_fp 11 53) x2_ack!7635))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7636) ((_ to_fp 11 53) b_ack!7637))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7636) ((_ to_fp 11 53) x0_ack!7638))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7636) ((_ to_fp 11 53) x1_ack!7634))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7637) ((_ to_fp 11 53) x0_ack!7638)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7634)
                    ((_ to_fp 11 53) x0_ack!7638))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7634)
          ((_ to_fp 11 53) x0_ack!7638))))

(check-sat)
(exit)
