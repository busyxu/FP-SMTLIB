(declare-fun b_ack!357 () (_ BitVec 64))
(declare-fun a_ack!358 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!357) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!358) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!358)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!357))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!358)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!357))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))
(assert (let ((a!1 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!357))))))
  (FPCHECK_FMUL_OVERFLOW
    #x3cc0000000000000
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven (CF_floor a_ack!358) a!1)
            ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
