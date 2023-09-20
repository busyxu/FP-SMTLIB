(declare-fun epsabs_ack!1725 () (_ BitVec 64))
(declare-fun epsrel_ack!1726 () (_ BitVec 64))
(declare-fun a_ack!1727 () (_ BitVec 64))
(declare-fun b_ack!1724 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!1725)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1726)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!1725) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!1726)
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1724)
                                   ((_ to_fp 11 53) a_ack!1727))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) b_ack!1724))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
  (not (fp.leq (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       a!2)
               ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1724)
                                   ((_ to_fp 11 53) a_ack!1727))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) b_ack!1724))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x7ff0000000000000))))
(let ((a!4 (not (or (fp.isNaN (fp.abs a!3))
                    (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfefd88da3d12526)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1724)
                                   ((_ to_fp 11 53) a_ack!1727))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) b_ack!1724))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x7ff0000000000000))))
(let ((a!4 (not (or (fp.isNaN (fp.abs a!3))
                    (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfef6297cff75cb0)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1724)
                                   ((_ to_fp 11 53) a_ack!1727))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) b_ack!1724))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x7ff0000000000000))))
(let ((a!4 (not (or (fp.isNaN (fp.abs a!3))
                    (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfee9f4156c62dda)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1724)
                                   ((_ to_fp 11 53) a_ack!1727))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) b_ack!1724))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x7ff0000000000000))))
(let ((a!4 (not (or (fp.isNaN (fp.abs a!3))
                    (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfed906bcf328d46)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1724)
                                   ((_ to_fp 11 53) a_ack!1727))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) b_ack!1724))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x7ff0000000000000))))
(let ((a!4 (not (or (fp.isNaN (fp.abs a!3))
                    (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfec38b2f180bdb1)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1724)
                                   ((_ to_fp 11 53) a_ack!1727))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) b_ack!1724))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x7ff0000000000000))))
(let ((a!4 (not (or (fp.isNaN (fp.abs a!3))
                    (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfea9b66290ea1a3)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1724)
                                   ((_ to_fp 11 53) a_ack!1727))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) b_ack!1724))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x7ff0000000000000))))
(let ((a!4 (not (or (fp.isNaN (fp.abs a!3))
                    (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe8bc806b151741)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1724)
                                   ((_ to_fp 11 53) a_ack!1727))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) b_ack!1724))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x7ff0000000000000))))
(let ((a!4 (not (or (fp.isNaN (fp.abs a!3))
                    (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe6a09e667f3bcd)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1724)
                                   ((_ to_fp 11 53) a_ack!1727))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) b_ack!1724))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x7ff0000000000000))))
(let ((a!4 (not (or (fp.isNaN (fp.abs a!3))
                    (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe44cf325091dd6)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1724)
                                   ((_ to_fp 11 53) a_ack!1727))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) b_ack!1724))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x7ff0000000000000))))
(let ((a!4 (not (or (fp.isNaN (fp.abs a!3))
                    (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfe1c73b39ae68c8)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1724)
                                   ((_ to_fp 11 53) a_ack!1727))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) b_ack!1724))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x7ff0000000000000))))
(let ((a!4 (not (or (fp.isNaN (fp.abs a!3))
                    (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfde2b5d3806f63b)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1724)
                                   ((_ to_fp 11 53) a_ack!1727))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1727)
                                   ((_ to_fp 11 53) b_ack!1724))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
