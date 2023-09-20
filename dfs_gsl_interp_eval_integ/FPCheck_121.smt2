(declare-fun x1_ack!1334 () (_ BitVec 64))
(declare-fun x0_ack!1338 () (_ BitVec 64))
(declare-fun x2_ack!1335 () (_ BitVec 64))
(declare-fun b_ack!1337 () (_ BitVec 64))
(declare-fun a_ack!1336 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1338) ((_ to_fp 11 53) x1_ack!1334)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1334) ((_ to_fp 11 53) x2_ack!1335)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1334)
                       ((_ to_fp 11 53) x0_ack!1338))
               ((_ to_fp 11 53) x0_ack!1338))
       ((_ to_fp 11 53) x1_ack!1334)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1334)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1334)
                       ((_ to_fp 11 53) x0_ack!1338)))
       ((_ to_fp 11 53) x0_ack!1338)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1335)
                       ((_ to_fp 11 53) x1_ack!1334))
               ((_ to_fp 11 53) x1_ack!1334))
       ((_ to_fp 11 53) x2_ack!1335)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1335)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1335)
                       ((_ to_fp 11 53) x1_ack!1334)))
       ((_ to_fp 11 53) x1_ack!1334)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1334)
                    ((_ to_fp 11 53) x0_ack!1338))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1335)
                    ((_ to_fp 11 53) x1_ack!1334))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) b_ack!1337))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) x0_ack!1338))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1337) ((_ to_fp 11 53) x2_ack!1335))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) b_ack!1337))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) x0_ack!1338))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) x1_ack!1334))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1337) ((_ to_fp 11 53) x0_ack!1338))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1337) ((_ to_fp 11 53) x1_ack!1334)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1334) ((_ to_fp 11 53) b_ack!1337))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1334)
                    ((_ to_fp 11 53) x0_ack!1338))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1336)
          ((_ to_fp 11 53) x0_ack!1338))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1336)
          ((_ to_fp 11 53) x0_ack!1338))))

(check-sat)
(exit)
