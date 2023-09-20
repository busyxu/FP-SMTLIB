(declare-fun y1_ack!902 () (_ BitVec 64))
(declare-fun x1_ack!905 () (_ BitVec 64))
(declare-fun y2_ack!904 () (_ BitVec 64))
(declare-fun x2_ack!903 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!905))
             (fp.abs ((_ to_fp 11 53) y1_ack!902)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!905) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!903))
        (fp.abs ((_ to_fp 11 53) y2_ack!904))))
(assert (let ((a!1 (and (fp.eq (fp.abs ((_ to_fp 11 53) y2_ack!904))
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.abs ((_ to_fp 11 53) x2_ack!903))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y2_ack!904))
          (fp.abs ((_ to_fp 11 53) x2_ack!903)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) y2_ack!904))
          (fp.abs ((_ to_fp 11 53) x2_ack!903)))))

(check-sat)
(exit)
