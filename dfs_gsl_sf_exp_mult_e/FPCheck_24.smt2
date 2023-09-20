(declare-fun b_ack!89 () (_ BitVec 64))
(declare-fun a_ack!90 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!89) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!90) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!90) ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!89))
            ((_ to_fp 11 53) #x5fe9999999999999))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!90)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!89))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!90))
         (CF_log (fp.abs ((_ to_fp 11 53) b_ack!89))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!90)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!89))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!89))))))
  (fp.eq a!2 ((_ to_fp 11 53) a_ack!90)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!90)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!89))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!90)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!89))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))
(assert (FPCHECK_FSUB_UNDERFLOW a_ack!90 (CF_floor a_ack!90)))

(check-sat)
(exit)
