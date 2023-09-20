(declare-fun b_ack!145 () (_ BitVec 64))
(declare-fun a_ack!146 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!145) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!146) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!146) ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!145))
            ((_ to_fp 11 53) #x5fe9999999999999))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!146)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!145))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!146))
         (CF_log (fp.abs ((_ to_fp 11 53) b_ack!145))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!146)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!145))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!145))))))
  (fp.eq a!2 ((_ to_fp 11 53) a_ack!146)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!146)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!145))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!146)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!145))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) b_ack!145)))))
      (a!2 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!145))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                 a!1)
         (fp.abs a!2))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) b_ack!145)))))
      (a!2 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!145))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                 (fp.abs a!2))
         a!1)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq ((_ to_fp 11 53) b_ack!145)
                          ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff)))
      (a!2 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!145))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.add roundNearestTiesToEven
                                   (CF_floor a_ack!146)
                                   a!2))))
      (a!4 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!145)))
                   a!2)))
(let ((a!5 (CF_exp (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!146)
                                   (CF_floor a_ack!146))
                           a!4))))
  (FPCHECK_FMUL_OVERFLOW a!3 a!5)))))

(check-sat)
(exit)
