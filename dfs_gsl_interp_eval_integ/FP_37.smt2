(declare-fun x1_ack!1389 () (_ BitVec 64))
(declare-fun x0_ack!1393 () (_ BitVec 64))
(declare-fun x2_ack!1390 () (_ BitVec 64))
(declare-fun b_ack!1392 () (_ BitVec 64))
(declare-fun a_ack!1391 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1393) ((_ to_fp 11 53) x1_ack!1389)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1389) ((_ to_fp 11 53) x2_ack!1390)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1389)
                       ((_ to_fp 11 53) x0_ack!1393))
               ((_ to_fp 11 53) x0_ack!1393))
       ((_ to_fp 11 53) x1_ack!1389)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1389)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1389)
                       ((_ to_fp 11 53) x0_ack!1393)))
       ((_ to_fp 11 53) x0_ack!1393)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1390)
                       ((_ to_fp 11 53) x1_ack!1389))
               ((_ to_fp 11 53) x1_ack!1389))
       ((_ to_fp 11 53) x2_ack!1390)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1390)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1390)
                       ((_ to_fp 11 53) x1_ack!1389)))
       ((_ to_fp 11 53) x1_ack!1389)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1389)
                    ((_ to_fp 11 53) x0_ack!1393))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1390)
                    ((_ to_fp 11 53) x1_ack!1389))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1391) ((_ to_fp 11 53) b_ack!1392))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1391) ((_ to_fp 11 53) x0_ack!1393))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1392) ((_ to_fp 11 53) x2_ack!1390))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1391) ((_ to_fp 11 53) b_ack!1392))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1391) ((_ to_fp 11 53) x0_ack!1393))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1391) ((_ to_fp 11 53) x1_ack!1389))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1392) ((_ to_fp 11 53) x0_ack!1393))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1392) ((_ to_fp 11 53) x1_ack!1389)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1389) ((_ to_fp 11 53) b_ack!1392))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1389)
                    ((_ to_fp 11 53) x0_ack!1393))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
