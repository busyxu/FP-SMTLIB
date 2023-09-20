(declare-fun a_ack!2693 () (_ BitVec 64))
(declare-fun b_ack!2692 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2693) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!2693)
                     ((_ to_fp 11 53) b_ack!2692))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2692) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2692))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!2693))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2693) ((_ to_fp 11 53) #x4065600000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2693)
                       ((_ to_fp 11 53) b_ack!2692))
               ((_ to_fp 11 53) a_ack!2693))
       ((_ to_fp 11 53) b_ack!2692)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2693)
                       ((_ to_fp 11 53) b_ack!2692))
               ((_ to_fp 11 53) b_ack!2692))
       ((_ to_fp 11 53) a_ack!2693)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2693)
               ((_ to_fp 11 53) b_ack!2692))
       ((_ to_fp 11 53) #x4065600000000000)))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2693) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2693) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!2693) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!2693)
                     ((_ to_fp 11 53) b_ack!2692))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2693)
                    ((_ to_fp 11 53) b_ack!2692))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2693)
                    ((_ to_fp 11 53) b_ack!2692))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.leq (fp.add roundNearestTiesToEven
                ((_ to_fp 11 53) a_ack!2693)
                ((_ to_fp 11 53) b_ack!2692))
        ((_ to_fp 11 53) #x4065600000000000)))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) a_ack!2693)
                          ((_ to_fp 11 53) b_ack!2692))
                  (CF_floor (fp.add roundNearestTiesToEven
                                    ((_ to_fp 11 53) a_ack!2693)
                                    ((_ to_fp 11 53) b_ack!2692))))))
  (not a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2693)
                                   ((_ to_fp 11 53) b_ack!2692))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2693)
                                   ((_ to_fp 11 53) b_ack!2692))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2693)
                                   ((_ to_fp 11 53) b_ack!2692))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3f613c449c85323d))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf675e6e90492e64)
                         a!1)
                 ((_ to_fp 11 53) #xbf675e6e90492e64))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2693)
                                   ((_ to_fp 11 53) b_ack!2692))
                           ((_ to_fp 11 53) #x4000000000000000))
                   ((_ to_fp 11 53) #x3f613c449c85323d))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #xbf675e6e90492e64)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #xbf675e6e90492e64))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!2693)
                           ((_ to_fp 11 53) b_ack!2692))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbf675e6e90492e64)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3f613c449c85323d))))))
  (FPCHECK_FADD_OVERFLOW #x3f86d7eeac9ea41b a!2))))

(check-sat)
(exit)
