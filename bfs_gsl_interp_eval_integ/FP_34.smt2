(declare-fun x1_ack!1035 () (_ BitVec 64))
(declare-fun x0_ack!1039 () (_ BitVec 64))
(declare-fun x2_ack!1036 () (_ BitVec 64))
(declare-fun b_ack!1038 () (_ BitVec 64))
(declare-fun a_ack!1037 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1039) ((_ to_fp 11 53) x1_ack!1035)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1035) ((_ to_fp 11 53) x2_ack!1036)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1035)
                       ((_ to_fp 11 53) x0_ack!1039))
               ((_ to_fp 11 53) x0_ack!1039))
       ((_ to_fp 11 53) x1_ack!1035)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1035)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1035)
                       ((_ to_fp 11 53) x0_ack!1039)))
       ((_ to_fp 11 53) x0_ack!1039)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1036)
                       ((_ to_fp 11 53) x1_ack!1035))
               ((_ to_fp 11 53) x1_ack!1035))
       ((_ to_fp 11 53) x2_ack!1036)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1036)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1036)
                       ((_ to_fp 11 53) x1_ack!1035)))
       ((_ to_fp 11 53) x1_ack!1035)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1035)
                    ((_ to_fp 11 53) x0_ack!1039))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1036)
                    ((_ to_fp 11 53) x1_ack!1035))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1037) ((_ to_fp 11 53) b_ack!1038))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1037) ((_ to_fp 11 53) x0_ack!1039))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1038) ((_ to_fp 11 53) x2_ack!1036))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1037) ((_ to_fp 11 53) b_ack!1038))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1037) ((_ to_fp 11 53) x0_ack!1039))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1037) ((_ to_fp 11 53) x1_ack!1035))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1038) ((_ to_fp 11 53) x0_ack!1039)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1035)
                    ((_ to_fp 11 53) x0_ack!1039))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
