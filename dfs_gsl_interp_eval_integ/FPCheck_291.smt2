(declare-fun x1_ack!3535 () (_ BitVec 64))
(declare-fun x0_ack!3539 () (_ BitVec 64))
(declare-fun x2_ack!3536 () (_ BitVec 64))
(declare-fun b_ack!3538 () (_ BitVec 64))
(declare-fun a_ack!3537 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3539) ((_ to_fp 11 53) x1_ack!3535)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3535) ((_ to_fp 11 53) x2_ack!3536)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3535)
                       ((_ to_fp 11 53) x0_ack!3539))
               ((_ to_fp 11 53) x0_ack!3539))
       ((_ to_fp 11 53) x1_ack!3535)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3535)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3535)
                       ((_ to_fp 11 53) x0_ack!3539)))
       ((_ to_fp 11 53) x0_ack!3539)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3536)
                       ((_ to_fp 11 53) x1_ack!3535))
               ((_ to_fp 11 53) x1_ack!3535))
       ((_ to_fp 11 53) x2_ack!3536)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3536)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3536)
                       ((_ to_fp 11 53) x1_ack!3535)))
       ((_ to_fp 11 53) x1_ack!3535)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3535)
                    ((_ to_fp 11 53) x0_ack!3539))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3536)
                    ((_ to_fp 11 53) x1_ack!3535))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3537) ((_ to_fp 11 53) b_ack!3538))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3537) ((_ to_fp 11 53) x0_ack!3539))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3538) ((_ to_fp 11 53) x2_ack!3536))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3537) ((_ to_fp 11 53) b_ack!3538))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3537) ((_ to_fp 11 53) x0_ack!3539))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3537) ((_ to_fp 11 53) x1_ack!3535))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3538) ((_ to_fp 11 53) x0_ack!3539))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3538) ((_ to_fp 11 53) x1_ack!3535))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3535)
                    ((_ to_fp 11 53) x0_ack!3539))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!3537 x0_ack!3539))

(check-sat)
(exit)
