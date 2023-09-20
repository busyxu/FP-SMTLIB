(declare-fun x1_ack!1938 () (_ BitVec 64))
(declare-fun x0_ack!1942 () (_ BitVec 64))
(declare-fun y0_ack!1939 () (_ BitVec 64))
(declare-fun x_ack!1940 () (_ BitVec 64))
(declare-fun y_ack!1941 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1942) ((_ to_fp 11 53) x1_ack!1938))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1939) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1940) ((_ to_fp 11 53) x0_ack!1942))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1940) ((_ to_fp 11 53) x1_ack!1938)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1941) ((_ to_fp 11 53) y0_ack!1939))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1941) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1938)
                       ((_ to_fp 11 53) x0_ack!1942))
               ((_ to_fp 11 53) x0_ack!1942))
       ((_ to_fp 11 53) x1_ack!1938)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1938)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1938)
                       ((_ to_fp 11 53) x0_ack!1942)))
       ((_ to_fp 11 53) x0_ack!1942)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1941)
                       ((_ to_fp 11 53) y0_ack!1939))
               ((_ to_fp 11 53) y0_ack!1939))
       ((_ to_fp 11 53) y_ack!1941)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!1941)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!1941)
                       ((_ to_fp 11 53) y0_ack!1939)))
       ((_ to_fp 11 53) y0_ack!1939)))

(check-sat)
(exit)
