(declare-fun x1_ack!2017 () (_ BitVec 64))
(declare-fun x0_ack!2024 () (_ BitVec 64))
(declare-fun x2_ack!2018 () (_ BitVec 64))
(declare-fun b_ack!2023 () (_ BitVec 64))
(declare-fun a_ack!2022 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2019 () (_ BitVec 64))
(declare-fun y1_ack!2020 () (_ BitVec 64))
(declare-fun y2_ack!2021 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2024) ((_ to_fp 11 53) x1_ack!2017)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2017) ((_ to_fp 11 53) x2_ack!2018)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2017)
                       ((_ to_fp 11 53) x0_ack!2024))
               ((_ to_fp 11 53) x0_ack!2024))
       ((_ to_fp 11 53) x1_ack!2017)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2017)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2017)
                       ((_ to_fp 11 53) x0_ack!2024)))
       ((_ to_fp 11 53) x0_ack!2024)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2018)
                       ((_ to_fp 11 53) x1_ack!2017))
               ((_ to_fp 11 53) x1_ack!2017))
       ((_ to_fp 11 53) x2_ack!2018)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2018)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2018)
                       ((_ to_fp 11 53) x1_ack!2017)))
       ((_ to_fp 11 53) x1_ack!2017)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2017)
                    ((_ to_fp 11 53) x0_ack!2024))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2018)
                    ((_ to_fp 11 53) x1_ack!2017))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2022) ((_ to_fp 11 53) b_ack!2023))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2022) ((_ to_fp 11 53) x0_ack!2024))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2023) ((_ to_fp 11 53) x2_ack!2018))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2022) ((_ to_fp 11 53) b_ack!2023))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2022) ((_ to_fp 11 53) x0_ack!2024))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2022) ((_ to_fp 11 53) x1_ack!2017))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2023) ((_ to_fp 11 53) x0_ack!2024))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2023) ((_ to_fp 11 53) x1_ack!2017)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2017) ((_ to_fp 11 53) b_ack!2023))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2017)
                    ((_ to_fp 11 53) x0_ack!2024))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2018)
                    ((_ to_fp 11 53) x1_ack!2017))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2021)
                           ((_ to_fp 11 53) y1_ack!2020))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2018)
                                   ((_ to_fp 11 53) x1_ack!2017)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2020)
                           ((_ to_fp 11 53) y0_ack!2019))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2017)
                                   ((_ to_fp 11 53) x0_ack!2024)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2018)
                                   ((_ to_fp 11 53) x1_ack!2017))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2017)
                                   ((_ to_fp 11 53) x0_ack!2024))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2018)
                                   ((_ to_fp 11 53) x1_ack!2017))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
  (FPCHECK_FSUB_OVERFLOW
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y2_ack!2021)
                    ((_ to_fp 11 53) y1_ack!2020))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2018)
                    ((_ to_fp 11 53) x1_ack!2017)))
    a!5)))))

(check-sat)
(exit)
