(declare-fun x1_ack!3555 () (_ BitVec 64))
(declare-fun x0_ack!3559 () (_ BitVec 64))
(declare-fun x2_ack!3556 () (_ BitVec 64))
(declare-fun b_ack!3558 () (_ BitVec 64))
(declare-fun a_ack!3557 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3559) ((_ to_fp 11 53) x1_ack!3555)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3555) ((_ to_fp 11 53) x2_ack!3556)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3555)
                       ((_ to_fp 11 53) x0_ack!3559))
               ((_ to_fp 11 53) x0_ack!3559))
       ((_ to_fp 11 53) x1_ack!3555)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3555)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3555)
                       ((_ to_fp 11 53) x0_ack!3559)))
       ((_ to_fp 11 53) x0_ack!3559)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3556)
                       ((_ to_fp 11 53) x1_ack!3555))
               ((_ to_fp 11 53) x1_ack!3555))
       ((_ to_fp 11 53) x2_ack!3556)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3556)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3556)
                       ((_ to_fp 11 53) x1_ack!3555)))
       ((_ to_fp 11 53) x1_ack!3555)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3555)
                    ((_ to_fp 11 53) x0_ack!3559))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3556)
                    ((_ to_fp 11 53) x1_ack!3555))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3557) ((_ to_fp 11 53) b_ack!3558))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3557) ((_ to_fp 11 53) x0_ack!3559))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3558) ((_ to_fp 11 53) x2_ack!3556))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3557) ((_ to_fp 11 53) b_ack!3558))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3557) ((_ to_fp 11 53) x0_ack!3559))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3557) ((_ to_fp 11 53) x1_ack!3555))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3558) ((_ to_fp 11 53) x0_ack!3559))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3558) ((_ to_fp 11 53) x1_ack!3555))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3555)
                    ((_ to_fp 11 53) x0_ack!3559))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!3557 x0_ack!3559))

(check-sat)
(exit)
