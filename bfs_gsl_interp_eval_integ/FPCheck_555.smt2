(declare-fun x1_ack!7017 () (_ BitVec 64))
(declare-fun x0_ack!7024 () (_ BitVec 64))
(declare-fun x2_ack!7018 () (_ BitVec 64))
(declare-fun b_ack!7023 () (_ BitVec 64))
(declare-fun a_ack!7022 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7019 () (_ BitVec 64))
(declare-fun y1_ack!7020 () (_ BitVec 64))
(declare-fun y2_ack!7021 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7024) ((_ to_fp 11 53) x1_ack!7017)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7017) ((_ to_fp 11 53) x2_ack!7018)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7017)
                       ((_ to_fp 11 53) x0_ack!7024))
               ((_ to_fp 11 53) x0_ack!7024))
       ((_ to_fp 11 53) x1_ack!7017)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7017)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7017)
                       ((_ to_fp 11 53) x0_ack!7024)))
       ((_ to_fp 11 53) x0_ack!7024)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7018)
                       ((_ to_fp 11 53) x1_ack!7017))
               ((_ to_fp 11 53) x1_ack!7017))
       ((_ to_fp 11 53) x2_ack!7018)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7018)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7018)
                       ((_ to_fp 11 53) x1_ack!7017)))
       ((_ to_fp 11 53) x1_ack!7017)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7017)
                    ((_ to_fp 11 53) x0_ack!7024))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7018)
                    ((_ to_fp 11 53) x1_ack!7017))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7022) ((_ to_fp 11 53) b_ack!7023))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7022) ((_ to_fp 11 53) x0_ack!7024))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7023) ((_ to_fp 11 53) x2_ack!7018))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7022) ((_ to_fp 11 53) b_ack!7023))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7022) ((_ to_fp 11 53) x0_ack!7024))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7022) ((_ to_fp 11 53) x1_ack!7017))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7023) ((_ to_fp 11 53) x0_ack!7024))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7023) ((_ to_fp 11 53) x1_ack!7017)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7017) ((_ to_fp 11 53) b_ack!7023))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7017)
                    ((_ to_fp 11 53) x0_ack!7024))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7018)
                    ((_ to_fp 11 53) x1_ack!7017))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7021)
                           ((_ to_fp 11 53) y1_ack!7020))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7018)
                                   ((_ to_fp 11 53) x1_ack!7017)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7020)
                           ((_ to_fp 11 53) y0_ack!7019))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7017)
                                   ((_ to_fp 11 53) x0_ack!7024)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7018)
                                   ((_ to_fp 11 53) x1_ack!7017))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7017)
                                   ((_ to_fp 11 53) x0_ack!7024))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_ZERO
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7018)
                    ((_ to_fp 11 53) x1_ack!7017)))))))

(check-sat)
(exit)
