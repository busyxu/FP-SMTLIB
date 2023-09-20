(declare-fun b_ack!115 () (_ BitVec 64))
(declare-fun a_ack!116 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!115) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!116) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!116) ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!115))
            ((_ to_fp 11 53) #x5fe9999999999999))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!116)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!115))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!116))
         (CF_log (fp.abs ((_ to_fp 11 53) b_ack!115))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!116)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!115))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!115))))))
  (fp.eq a!2 ((_ to_fp 11 53) a_ack!116)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!116)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!115))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!116)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!115))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) b_ack!115)))))
      (a!2 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!115))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                 a!1)
         (fp.abs a!2))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) b_ack!115)))))
      (a!2 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!115))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))
                 (fp.abs a!2))
         a!1)))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) b_ack!115)))))
      (a!2 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!115))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3cc0000000000000
    (fp.add roundNearestTiesToEven a!1 (fp.abs a!2)))))

(check-sat)
(exit)
