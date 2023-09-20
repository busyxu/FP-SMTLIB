(declare-fun c_ack!3040 () (_ BitVec 64))
(declare-fun a_ack!3041 () (_ BitVec 32))
(declare-fun b_ack!3039 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!3040))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!3039 a_ack!3041)))
(assert (not (bvslt a_ack!3041 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3040) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!3039)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!3040))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) c_ack!3040))
                          (fp.abs ((_ to_fp 11 53) c_ack!3040)))
                  ((_ to_fp 11 53) #x41fd6e2bc3b82b06))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3040))
                           (fp.abs ((_ to_fp 11 53) c_ack!3040))))))
  (not (fp.lt ((_ to_fp 11 53) #x3fd28f5c28f5c28f)
              (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fe0000000000000)
                      a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!3040))
                           (fp.abs ((_ to_fp 11 53) c_ack!3040))))))
  (not (fp.lt (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3fe0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x3ec965fea53d6e41)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!3040)))
                   ((_ to_fp 11 53) #x407ea00000000000))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x410428a2f98d7287)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!3040)))
                   ((_ to_fp 11 53) #x407ea00000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1)
                           a!1))))
(let ((a!3 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xc06ea00000000000)
                                  a!1)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!2))
                  ((_ to_fp 11 53) #x40862e42fefa39ef))))
  (not a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!3040)))
                   ((_ to_fp 11 53) #x407ea00000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1)
                           a!1))))
(let ((a!3 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) #xc06ea00000000000)
                                  a!1)
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!2))
                  ((_ to_fp 11 53) #xc086232bdd7abcd2))))
  (not a!3)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs (fp.abs ((_ to_fp 11 53) c_ack!3040)))
                   ((_ to_fp 11 53) #x407ea00000000000))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4028000000000000)
                                   a!1)
                           a!1))))
(let ((a!3 (CF_exp (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xc06ea00000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2)))))
  (FPCHECK_FMUL_OVERFLOW #x7ff0000000000001 a!3)))))

(check-sat)
(exit)
