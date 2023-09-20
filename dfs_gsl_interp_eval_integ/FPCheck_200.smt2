(declare-fun x1_ack!2335 () (_ BitVec 64))
(declare-fun x0_ack!2342 () (_ BitVec 64))
(declare-fun x2_ack!2336 () (_ BitVec 64))
(declare-fun b_ack!2341 () (_ BitVec 64))
(declare-fun a_ack!2340 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!2337 () (_ BitVec 64))
(declare-fun y1_ack!2338 () (_ BitVec 64))
(declare-fun y2_ack!2339 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2342) ((_ to_fp 11 53) x1_ack!2335)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2335) ((_ to_fp 11 53) x2_ack!2336)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2335)
                       ((_ to_fp 11 53) x0_ack!2342))
               ((_ to_fp 11 53) x0_ack!2342))
       ((_ to_fp 11 53) x1_ack!2335)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2335)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2335)
                       ((_ to_fp 11 53) x0_ack!2342)))
       ((_ to_fp 11 53) x0_ack!2342)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2336)
                       ((_ to_fp 11 53) x1_ack!2335))
               ((_ to_fp 11 53) x1_ack!2335))
       ((_ to_fp 11 53) x2_ack!2336)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2336)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2336)
                       ((_ to_fp 11 53) x1_ack!2335)))
       ((_ to_fp 11 53) x1_ack!2335)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2335)
                    ((_ to_fp 11 53) x0_ack!2342))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2336)
                    ((_ to_fp 11 53) x1_ack!2335))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2340) ((_ to_fp 11 53) b_ack!2341))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2340) ((_ to_fp 11 53) x0_ack!2342))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2341) ((_ to_fp 11 53) x2_ack!2336))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2340) ((_ to_fp 11 53) b_ack!2341))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2340) ((_ to_fp 11 53) x0_ack!2342))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2340) ((_ to_fp 11 53) x1_ack!2335))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2341) ((_ to_fp 11 53) x0_ack!2342))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2341) ((_ to_fp 11 53) x1_ack!2335)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2335) ((_ to_fp 11 53) b_ack!2341))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2335)
                    ((_ to_fp 11 53) x0_ack!2342))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2336)
                    ((_ to_fp 11 53) x1_ack!2335))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2339)
                           ((_ to_fp 11 53) y1_ack!2338))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2336)
                                   ((_ to_fp 11 53) x1_ack!2335)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2338)
                           ((_ to_fp 11 53) y0_ack!2337))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2335)
                                   ((_ to_fp 11 53) x0_ack!2342)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2336)
                                   ((_ to_fp 11 53) x1_ack!2335))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2335)
                                   ((_ to_fp 11 53) x0_ack!2342))))))
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
                                   ((_ to_fp 11 53) x2_ack!2336)
                                   ((_ to_fp 11 53) x1_ack!2335))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!2339)
                                   ((_ to_fp 11 53) y1_ack!2338))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2336)
                                   ((_ to_fp 11 53) x1_ack!2335)))
                   a!5)))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3fe0000000000000) a!6)
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2335)
                    ((_ to_fp 11 53) x1_ack!2335))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!2341)
                    ((_ to_fp 11 53) x1_ack!2335)))))))))

(check-sat)
(exit)
