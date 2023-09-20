(declare-fun x1_ack!1541 () (_ BitVec 64))
(declare-fun x0_ack!1545 () (_ BitVec 64))
(declare-fun x2_ack!1542 () (_ BitVec 64))
(declare-fun b_ack!1544 () (_ BitVec 64))
(declare-fun a_ack!1543 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1545) ((_ to_fp 11 53) x1_ack!1541)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1541) ((_ to_fp 11 53) x2_ack!1542)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1541)
                       ((_ to_fp 11 53) x0_ack!1545))
               ((_ to_fp 11 53) x0_ack!1545))
       ((_ to_fp 11 53) x1_ack!1541)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1541)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1541)
                       ((_ to_fp 11 53) x0_ack!1545)))
       ((_ to_fp 11 53) x0_ack!1545)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1542)
                       ((_ to_fp 11 53) x1_ack!1541))
               ((_ to_fp 11 53) x1_ack!1541))
       ((_ to_fp 11 53) x2_ack!1542)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1542)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1542)
                       ((_ to_fp 11 53) x1_ack!1541)))
       ((_ to_fp 11 53) x1_ack!1541)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1541)
                    ((_ to_fp 11 53) x0_ack!1545))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1542)
                    ((_ to_fp 11 53) x1_ack!1541))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1543) ((_ to_fp 11 53) b_ack!1544))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1543) ((_ to_fp 11 53) x0_ack!1545))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1544) ((_ to_fp 11 53) x2_ack!1542))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1543) ((_ to_fp 11 53) b_ack!1544))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1543) ((_ to_fp 11 53) x0_ack!1545))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1543) ((_ to_fp 11 53) x1_ack!1541))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1544) ((_ to_fp 11 53) x0_ack!1545)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1541)
                    ((_ to_fp 11 53) x0_ack!1545))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1544)
                                  ((_ to_fp 11 53) x0_ack!1545)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1544)
                                   ((_ to_fp 11 53) x0_ack!1545))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1544)
                                   ((_ to_fp 11 53) x0_ack!1545)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1544)
                           ((_ to_fp 11 53) x0_ack!1545)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1544)
                 ((_ to_fp 11 53) x0_ack!1545)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1544)
                                  ((_ to_fp 11 53) x0_ack!1545)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1544)
                                   ((_ to_fp 11 53) x0_ack!1545))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1544)
                                   ((_ to_fp 11 53) x0_ack!1545)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1544)
                           ((_ to_fp 11 53) x0_ack!1545)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1544)
                 ((_ to_fp 11 53) x0_ack!1545)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!1543)
          ((_ to_fp 11 53) x0_ack!1545))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!1544)
          ((_ to_fp 11 53) x0_ack!1545))))

(check-sat)
(exit)
