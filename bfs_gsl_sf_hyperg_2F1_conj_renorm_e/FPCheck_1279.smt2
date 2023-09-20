(declare-fun a_ack!5268 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun c_ack!5267 () (_ BitVec 64))
(declare-fun b_ack!5266 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) a_ack!5268) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!5268)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) a_ack!5268)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!5267) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!5267)
                   (CF_floor (fp.add roundNearestTiesToEven
                                     ((_ to_fp 11 53) c_ack!5267)
                                     ((_ to_fp 11 53) #x3fe0000000000000))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3d4f400000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!5266) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5267)
                       ((_ to_fp 11 53) #x3fb999999999999a))
               ((_ to_fp 11 53) c_ack!5267))
       ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!5267)
                       ((_ to_fp 11 53) #x3fb999999999999a))
               ((_ to_fp 11 53) #x3fb999999999999a))
       ((_ to_fp 11 53) c_ack!5267)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5268)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!5267)
                    ((_ to_fp 11 53) #x3fb999999999999a)))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5268)
                       ((_ to_fp 11 53) c_ack!5267))
               ((_ to_fp 11 53) c_ack!5267))
       ((_ to_fp 11 53) a_ack!5268)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5268)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5268)
                       ((_ to_fp 11 53) c_ack!5267)))
       ((_ to_fp 11 53) c_ack!5267)))
(assert (fp.leq (fp.add roundNearestTiesToEven
                (fp.sub roundNearestTiesToEven
                        ((_ to_fp 11 53) a_ack!5268)
                        ((_ to_fp 11 53) c_ack!5267))
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5268)
                                   ((_ to_fp 11 53) c_ack!5267))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FADD_UNDERFLOW
    a!2
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!5266))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!5266)))))))

(check-sat)
(exit)
