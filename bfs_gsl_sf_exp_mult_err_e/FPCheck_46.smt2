(declare-fun c_ack!168 () (_ BitVec 64))
(declare-fun a_ack!169 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!168) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!169) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!169)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!168))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!169)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!168))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))
(assert (let ((a!1 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) c_ack!168))))))
  (FPCHECK_FADD_ACCURACY (CF_floor a_ack!169) a!1)))

(check-sat)
(exit)
