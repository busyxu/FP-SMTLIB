(declare-fun a_ack!2629 () (_ BitVec 64))
(declare-fun b_ack!2628 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!2628))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!2629))))))
  (not a!1)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!2629))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!2628)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!2628))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2629))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.abs ((_ to_fp 11 53) b_ack!2628)))
         (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2629))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2629))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!2628))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2629))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2629))))))
  (fp.eq a!2 (fp.abs ((_ to_fp 11 53) b_ack!2628))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!2628))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!2629))))))
  (fp.gt a!1 ((_ to_fp 11 53) #x3fb999999999999a))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2628) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2629) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) a_ack!2629) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!2629) (CF_floor a_ack!2629)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2629)
                       ((_ to_fp 11 53) b_ack!2628))
               ((_ to_fp 11 53) a_ack!2629))
       ((_ to_fp 11 53) b_ack!2628)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2629)
                       ((_ to_fp 11 53) b_ack!2628))
               ((_ to_fp 11 53) b_ack!2628))
       ((_ to_fp 11 53) a_ack!2629)))
(assert (fp.lt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!2629)
               ((_ to_fp 11 53) b_ack!2628))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.eq ((_ to_fp 11 53) b_ack!2628) (CF_floor b_ack!2628)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x3fb999999999999a
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x8000000000000000)
          ((_ to_fp 11 53) a_ack!2629))))

(check-sat)
(exit)
