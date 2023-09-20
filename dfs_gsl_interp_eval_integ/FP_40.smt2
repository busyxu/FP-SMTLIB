(declare-fun x1_ack!1821 () (_ BitVec 64))
(declare-fun x0_ack!1825 () (_ BitVec 64))
(declare-fun x2_ack!1822 () (_ BitVec 64))
(declare-fun b_ack!1824 () (_ BitVec 64))
(declare-fun a_ack!1823 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1825) ((_ to_fp 11 53) x1_ack!1821)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1821) ((_ to_fp 11 53) x2_ack!1822)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1821)
                       ((_ to_fp 11 53) x0_ack!1825))
               ((_ to_fp 11 53) x0_ack!1825))
       ((_ to_fp 11 53) x1_ack!1821)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1821)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1821)
                       ((_ to_fp 11 53) x0_ack!1825)))
       ((_ to_fp 11 53) x0_ack!1825)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1822)
                       ((_ to_fp 11 53) x1_ack!1821))
               ((_ to_fp 11 53) x1_ack!1821))
       ((_ to_fp 11 53) x2_ack!1822)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1822)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1822)
                       ((_ to_fp 11 53) x1_ack!1821)))
       ((_ to_fp 11 53) x1_ack!1821)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1821)
                    ((_ to_fp 11 53) x0_ack!1825))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1822)
                    ((_ to_fp 11 53) x1_ack!1821))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1823) ((_ to_fp 11 53) b_ack!1824))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1823) ((_ to_fp 11 53) x0_ack!1825))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1824) ((_ to_fp 11 53) x2_ack!1822))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1823) ((_ to_fp 11 53) b_ack!1824))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1823) ((_ to_fp 11 53) x0_ack!1825))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1823) ((_ to_fp 11 53) x1_ack!1821))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1824) ((_ to_fp 11 53) x0_ack!1825))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1824) ((_ to_fp 11 53) x1_ack!1821)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1821) ((_ to_fp 11 53) b_ack!1824))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1821)
                    ((_ to_fp 11 53) x0_ack!1825))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (not (fp.eq (fp.sub roundNearestTiesToEven
                               ((_ to_fp 11 53) x2_ack!1822)
                               ((_ to_fp 11 53) x1_ack!1821))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))

(check-sat)
(exit)
