(declare-fun x1_ack!1419 () (_ BitVec 64))
(declare-fun x0_ack!1426 () (_ BitVec 64))
(declare-fun x2_ack!1420 () (_ BitVec 64))
(declare-fun b_ack!1425 () (_ BitVec 64))
(declare-fun a_ack!1424 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1421 () (_ BitVec 64))
(declare-fun y1_ack!1422 () (_ BitVec 64))
(declare-fun y2_ack!1423 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1426) ((_ to_fp 11 53) x1_ack!1419)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1419) ((_ to_fp 11 53) x2_ack!1420)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1419)
                       ((_ to_fp 11 53) x0_ack!1426))
               ((_ to_fp 11 53) x0_ack!1426))
       ((_ to_fp 11 53) x1_ack!1419)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1419)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1419)
                       ((_ to_fp 11 53) x0_ack!1426)))
       ((_ to_fp 11 53) x0_ack!1426)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1420)
                       ((_ to_fp 11 53) x1_ack!1419))
               ((_ to_fp 11 53) x1_ack!1419))
       ((_ to_fp 11 53) x2_ack!1420)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1420)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1420)
                       ((_ to_fp 11 53) x1_ack!1419)))
       ((_ to_fp 11 53) x1_ack!1419)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1419)
                    ((_ to_fp 11 53) x0_ack!1426))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1420)
                    ((_ to_fp 11 53) x1_ack!1419))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1424) ((_ to_fp 11 53) b_ack!1425))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1424) ((_ to_fp 11 53) x0_ack!1426))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1425) ((_ to_fp 11 53) x2_ack!1420))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1424) ((_ to_fp 11 53) b_ack!1425))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1424) ((_ to_fp 11 53) x0_ack!1426))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1424) ((_ to_fp 11 53) x1_ack!1419))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1425) ((_ to_fp 11 53) x0_ack!1426))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1425) ((_ to_fp 11 53) x1_ack!1419)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1419) ((_ to_fp 11 53) b_ack!1425))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1419)
                    ((_ to_fp 11 53) x0_ack!1426))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1423)
                           ((_ to_fp 11 53) y1_ack!1422))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1420)
                                   ((_ to_fp 11 53) x1_ack!1419)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1422)
                           ((_ to_fp 11 53) y0_ack!1421))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1419)
                                   ((_ to_fp 11 53) x0_ack!1426)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1420)
                                   ((_ to_fp 11 53) x1_ack!1419))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1419)
                                   ((_ to_fp 11 53) x0_ack!1426)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1424)
                                   ((_ to_fp 11 53) x0_ack!1426))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1424)
                                   ((_ to_fp 11 53) x0_ack!1426)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1419)
                                   ((_ to_fp 11 53) x0_ack!1426))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1419)
                                   ((_ to_fp 11 53) x0_ack!1426))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1419)
                                   ((_ to_fp 11 53) x0_ack!1426))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1424)
                                   ((_ to_fp 11 53) x0_ack!1426))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1419)
                                   ((_ to_fp 11 53) x0_ack!1426))))))
  (FPCHECK_FMUL_OVERFLOW a!6 a!7))))))

(check-sat)
(exit)
