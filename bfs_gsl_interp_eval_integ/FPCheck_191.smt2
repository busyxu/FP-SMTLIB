(declare-fun x1_ack!2222 () (_ BitVec 64))
(declare-fun x0_ack!2229 () (_ BitVec 64))
(declare-fun x2_ack!2223 () (_ BitVec 64))
(declare-fun b_ack!2228 () (_ BitVec 64))
(declare-fun a_ack!2227 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun y0_ack!2224 () (_ BitVec 64))
(declare-fun y1_ack!2225 () (_ BitVec 64))
(declare-fun y2_ack!2226 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2229) ((_ to_fp 11 53) x1_ack!2222)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2222) ((_ to_fp 11 53) x2_ack!2223)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2222)
                       ((_ to_fp 11 53) x0_ack!2229))
               ((_ to_fp 11 53) x0_ack!2229))
       ((_ to_fp 11 53) x1_ack!2222)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2222)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2222)
                       ((_ to_fp 11 53) x0_ack!2229)))
       ((_ to_fp 11 53) x0_ack!2229)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2223)
                       ((_ to_fp 11 53) x1_ack!2222))
               ((_ to_fp 11 53) x1_ack!2222))
       ((_ to_fp 11 53) x2_ack!2223)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2223)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2223)
                       ((_ to_fp 11 53) x1_ack!2222)))
       ((_ to_fp 11 53) x1_ack!2222)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2222)
                    ((_ to_fp 11 53) x0_ack!2229))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2223)
                    ((_ to_fp 11 53) x1_ack!2222))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2227) ((_ to_fp 11 53) b_ack!2228))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2227) ((_ to_fp 11 53) x0_ack!2229))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2228) ((_ to_fp 11 53) x2_ack!2223))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2227) ((_ to_fp 11 53) b_ack!2228))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2227) ((_ to_fp 11 53) x0_ack!2229))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2227) ((_ to_fp 11 53) x1_ack!2222)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2222) ((_ to_fp 11 53) a_ack!2227))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2228) ((_ to_fp 11 53) x1_ack!2222))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2228) ((_ to_fp 11 53) x2_ack!2223))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2223)
                    ((_ to_fp 11 53) x1_ack!2222))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!2226)
                           ((_ to_fp 11 53) y1_ack!2225))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2223)
                                   ((_ to_fp 11 53) x1_ack!2222)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!2225)
                           ((_ to_fp 11 53) y0_ack!2224))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2222)
                                   ((_ to_fp 11 53) x0_ack!2229)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!2223)
                                   ((_ to_fp 11 53) x1_ack!2222))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2222)
                                   ((_ to_fp 11 53) x0_ack!2229))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2223)
                    ((_ to_fp 11 53) x1_ack!2222))
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!4))
    #x4008000000000000))))

(check-sat)
(exit)
