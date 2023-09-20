(declare-fun x1_ack!1420 () (_ BitVec 64))
(declare-fun x0_ack!1424 () (_ BitVec 64))
(declare-fun x2_ack!1421 () (_ BitVec 64))
(declare-fun b_ack!1423 () (_ BitVec 64))
(declare-fun a_ack!1422 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1424) ((_ to_fp 11 53) x1_ack!1420)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1420) ((_ to_fp 11 53) x2_ack!1421)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1420)
                       ((_ to_fp 11 53) x0_ack!1424))
               ((_ to_fp 11 53) x0_ack!1424))
       ((_ to_fp 11 53) x1_ack!1420)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1420)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1420)
                       ((_ to_fp 11 53) x0_ack!1424)))
       ((_ to_fp 11 53) x0_ack!1424)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1421)
                       ((_ to_fp 11 53) x1_ack!1420))
               ((_ to_fp 11 53) x1_ack!1420))
       ((_ to_fp 11 53) x2_ack!1421)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1421)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1421)
                       ((_ to_fp 11 53) x1_ack!1420)))
       ((_ to_fp 11 53) x1_ack!1420)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1420)
                    ((_ to_fp 11 53) x0_ack!1424))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1421)
                    ((_ to_fp 11 53) x1_ack!1420))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1422) ((_ to_fp 11 53) b_ack!1423))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1422) ((_ to_fp 11 53) x0_ack!1424))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1423) ((_ to_fp 11 53) x2_ack!1421))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1422) ((_ to_fp 11 53) b_ack!1423))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1422) ((_ to_fp 11 53) x0_ack!1424))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1422) ((_ to_fp 11 53) x1_ack!1420))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1423) ((_ to_fp 11 53) x0_ack!1424))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!1423) ((_ to_fp 11 53) x1_ack!1420))))

(check-sat)
(exit)
