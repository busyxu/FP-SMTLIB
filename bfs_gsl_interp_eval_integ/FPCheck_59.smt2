(declare-fun x1_ack!564 () (_ BitVec 64))
(declare-fun x0_ack!568 () (_ BitVec 64))
(declare-fun x2_ack!565 () (_ BitVec 64))
(declare-fun b_ack!567 () (_ BitVec 64))
(declare-fun a_ack!566 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!568) ((_ to_fp 11 53) x1_ack!564)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!564) ((_ to_fp 11 53) x2_ack!565)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!564)
                       ((_ to_fp 11 53) x0_ack!568))
               ((_ to_fp 11 53) x0_ack!568))
       ((_ to_fp 11 53) x1_ack!564)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!564)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!564)
                       ((_ to_fp 11 53) x0_ack!568)))
       ((_ to_fp 11 53) x0_ack!568)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!565)
                       ((_ to_fp 11 53) x1_ack!564))
               ((_ to_fp 11 53) x1_ack!564))
       ((_ to_fp 11 53) x2_ack!565)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!565)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!565)
                       ((_ to_fp 11 53) x1_ack!564)))
       ((_ to_fp 11 53) x1_ack!564)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!564)
                    ((_ to_fp 11 53) x0_ack!568))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!565)
                    ((_ to_fp 11 53) x1_ack!564))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!566) ((_ to_fp 11 53) b_ack!567))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!566) ((_ to_fp 11 53) x0_ack!568))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!567) ((_ to_fp 11 53) x2_ack!565))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!566) ((_ to_fp 11 53) b_ack!567))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!566) ((_ to_fp 11 53) x0_ack!568))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!566) ((_ to_fp 11 53) x1_ack!564))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!567) ((_ to_fp 11 53) x0_ack!568))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!567) ((_ to_fp 11 53) x1_ack!564))))
(assert (FPCHECK_FSUB_ACCURACY x1_ack!564 x0_ack!568))

(check-sat)
(exit)
