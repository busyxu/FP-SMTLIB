(declare-fun x1_ack!2401 () (_ BitVec 64))
(declare-fun x0_ack!2408 () (_ BitVec 64))
(declare-fun x2_ack!2402 () (_ BitVec 64))
(declare-fun b_ack!2407 () (_ BitVec 64))
(declare-fun a_ack!2406 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2403 () (_ BitVec 64))
(declare-fun y1_ack!2404 () (_ BitVec 64))
(declare-fun y2_ack!2405 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2408) ((_ to_fp 11 53) x1_ack!2401)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2401) ((_ to_fp 11 53) x2_ack!2402)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2401)
                       ((_ to_fp 11 53) x0_ack!2408))
               ((_ to_fp 11 53) x0_ack!2408))
       ((_ to_fp 11 53) x1_ack!2401)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2401)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2401)
                       ((_ to_fp 11 53) x0_ack!2408)))
       ((_ to_fp 11 53) x0_ack!2408)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2402)
                       ((_ to_fp 11 53) x1_ack!2401))
               ((_ to_fp 11 53) x1_ack!2401))
       ((_ to_fp 11 53) x2_ack!2402)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2402)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2402)
                       ((_ to_fp 11 53) x1_ack!2401)))
       ((_ to_fp 11 53) x1_ack!2401)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2401)
                    ((_ to_fp 11 53) x0_ack!2408))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2402)
                    ((_ to_fp 11 53) x1_ack!2401))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2406) ((_ to_fp 11 53) b_ack!2407))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2406) ((_ to_fp 11 53) x0_ack!2408))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2407) ((_ to_fp 11 53) x2_ack!2402))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2406) ((_ to_fp 11 53) b_ack!2407))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2406) ((_ to_fp 11 53) x0_ack!2408))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2406) ((_ to_fp 11 53) x1_ack!2401)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2401) ((_ to_fp 11 53) a_ack!2406))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2407) ((_ to_fp 11 53) x1_ack!2401))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2407) ((_ to_fp 11 53) x2_ack!2402))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2402)
                    ((_ to_fp 11 53) x1_ack!2401))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2405)
                           ((_ to_fp 11 53) y1_ack!2404))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2402)
                                   ((_ to_fp 11 53) x1_ack!2401)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2404)
                           ((_ to_fp 11 53) y0_ack!2403))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2401)
                                   ((_ to_fp 11 53) x0_ack!2408)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2402)
                                   ((_ to_fp 11 53) x1_ack!2401))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2401)
                                   ((_ to_fp 11 53) x0_ack!2408))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_ACCURACY
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2402)
                    ((_ to_fp 11 53) x1_ack!2401)))))))

(check-sat)
(exit)
