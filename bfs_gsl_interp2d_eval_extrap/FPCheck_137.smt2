(declare-fun x1_ack!1407 () (_ BitVec 64))
(declare-fun x0_ack!1411 () (_ BitVec 64))
(declare-fun y0_ack!1408 () (_ BitVec 64))
(declare-fun x_ack!1409 () (_ BitVec 64))
(declare-fun y_ack!1410 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1411) ((_ to_fp 11 53) x1_ack!1407))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1408) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) x_ack!1409) ((_ to_fp 11 53) x0_ack!1411)))
(assert (fp.lt ((_ to_fp 11 53) y_ack!1410) ((_ to_fp 11 53) y0_ack!1408)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1407)
                       ((_ to_fp 11 53) x0_ack!1411))
               ((_ to_fp 11 53) x0_ack!1411))
       ((_ to_fp 11 53) x1_ack!1407)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1407)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1407)
                       ((_ to_fp 11 53) x0_ack!1411)))
       ((_ to_fp 11 53) x0_ack!1411)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1409)
          ((_ to_fp 11 53) x0_ack!1411))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1407)
          ((_ to_fp 11 53) x0_ack!1411))))

(check-sat)
(exit)
