(declare-fun a_ack!1845 () (_ BitVec 64))
(declare-fun b_ack!1844 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1845) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1845)
                     ((_ to_fp 11 53) b_ack!1844))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1844) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1844))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!1845))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1845) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1845)
                       ((_ to_fp 11 53) b_ack!1844))
               ((_ to_fp 11 53) a_ack!1845))
       ((_ to_fp 11 53) b_ack!1844)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!1845)
                       ((_ to_fp 11 53) b_ack!1844))
               ((_ to_fp 11 53) b_ack!1844))
       ((_ to_fp 11 53) a_ack!1845)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1845)
               ((_ to_fp 11 53) b_ack!1844))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1845) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1845) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1845) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!1845)
                     ((_ to_fp 11 53) b_ack!1844))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1845)
                    ((_ to_fp 11 53) b_ack!1844))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1845)
                    ((_ to_fp 11 53) b_ack!1844))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!1845)
                ((_ to_fp 11 53) b_ack!1844))
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!1845)
                          ((_ to_fp 11 53) b_ack!1844))
                  (CF_floor (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!1845)
                                    ((_ to_fp 11 53) b_ack!1844))))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1845)
                                   ((_ to_fp 11 53) b_ack!1844))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1845)
                                   ((_ to_fp 11 53) b_ack!1844))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1845)
                    ((_ to_fp 11 53) b_ack!1844))
            ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!1845)
               ((_ to_fp 11 53) b_ack!1844))
       ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1845)
                                   ((_ to_fp 11 53) b_ack!1844)))
                   ((_ to_fp 11 53) #x402e000000000000))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x4014000000000000)))
                   ((_ to_fp 11 53) #xbff0000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.sub roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    a!3
                    ((_ to_fp 11 53) #x0000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))
    #xbc10a82ef1780da1)))))

(check-sat)
(exit)
