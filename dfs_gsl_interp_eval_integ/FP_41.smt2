(declare-fun x1_ack!1826 () (_ BitVec 64))
(declare-fun x0_ack!1830 () (_ BitVec 64))
(declare-fun x2_ack!1827 () (_ BitVec 64))
(declare-fun b_ack!1829 () (_ BitVec 64))
(declare-fun a_ack!1828 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1830) ((_ to_fp 11 53) x1_ack!1826)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1826) ((_ to_fp 11 53) x2_ack!1827)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1826)
                       ((_ to_fp 11 53) x0_ack!1830))
               ((_ to_fp 11 53) x0_ack!1830))
       ((_ to_fp 11 53) x1_ack!1826)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1826)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1826)
                       ((_ to_fp 11 53) x0_ack!1830)))
       ((_ to_fp 11 53) x0_ack!1830)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1827)
                       ((_ to_fp 11 53) x1_ack!1826))
               ((_ to_fp 11 53) x1_ack!1826))
       ((_ to_fp 11 53) x2_ack!1827)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1827)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1827)
                       ((_ to_fp 11 53) x1_ack!1826)))
       ((_ to_fp 11 53) x1_ack!1826)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1826)
                    ((_ to_fp 11 53) x0_ack!1830))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1827)
                    ((_ to_fp 11 53) x1_ack!1826))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1828) ((_ to_fp 11 53) b_ack!1829))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1828) ((_ to_fp 11 53) x0_ack!1830))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1829) ((_ to_fp 11 53) x2_ack!1827))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1828) ((_ to_fp 11 53) b_ack!1829))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1828) ((_ to_fp 11 53) x0_ack!1830))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1828) ((_ to_fp 11 53) x1_ack!1826))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1829) ((_ to_fp 11 53) x0_ack!1830))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1829) ((_ to_fp 11 53) x1_ack!1826)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1826) ((_ to_fp 11 53) b_ack!1829))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1826)
                    ((_ to_fp 11 53) x0_ack!1830))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1827)
                    ((_ to_fp 11 53) x1_ack!1826))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
