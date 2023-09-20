(declare-fun x1_ack!7103 () (_ BitVec 64))
(declare-fun x0_ack!7107 () (_ BitVec 64))
(declare-fun x2_ack!7104 () (_ BitVec 64))
(declare-fun b_ack!7106 () (_ BitVec 64))
(declare-fun a_ack!7105 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7107) ((_ to_fp 11 53) x1_ack!7103)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7103) ((_ to_fp 11 53) x2_ack!7104)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7103)
                       ((_ to_fp 11 53) x0_ack!7107))
               ((_ to_fp 11 53) x0_ack!7107))
       ((_ to_fp 11 53) x1_ack!7103)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7103)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7103)
                       ((_ to_fp 11 53) x0_ack!7107)))
       ((_ to_fp 11 53) x0_ack!7107)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7104)
                       ((_ to_fp 11 53) x1_ack!7103))
               ((_ to_fp 11 53) x1_ack!7103))
       ((_ to_fp 11 53) x2_ack!7104)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7104)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7104)
                       ((_ to_fp 11 53) x1_ack!7103)))
       ((_ to_fp 11 53) x1_ack!7103)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7103)
                    ((_ to_fp 11 53) x0_ack!7107))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7104)
                    ((_ to_fp 11 53) x1_ack!7103))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7105) ((_ to_fp 11 53) b_ack!7106))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7105) ((_ to_fp 11 53) x0_ack!7107))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7106) ((_ to_fp 11 53) x2_ack!7104))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7105) ((_ to_fp 11 53) b_ack!7106))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7105) ((_ to_fp 11 53) x0_ack!7107))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7105) ((_ to_fp 11 53) x1_ack!7103))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7106) ((_ to_fp 11 53) x0_ack!7107))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7106) ((_ to_fp 11 53) x1_ack!7103)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7103) ((_ to_fp 11 53) b_ack!7106))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7103)
                    ((_ to_fp 11 53) x0_ack!7107))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7104)
                    ((_ to_fp 11 53) x1_ack!7103))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7103)
          ((_ to_fp 11 53) x1_ack!7103))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7106)
          ((_ to_fp 11 53) x1_ack!7103))))

(check-sat)
(exit)
