(declare-fun x1_ack!1792 () (_ BitVec 64))
(declare-fun x0_ack!1799 () (_ BitVec 64))
(declare-fun x2_ack!1793 () (_ BitVec 64))
(declare-fun b_ack!1798 () (_ BitVec 64))
(declare-fun a_ack!1797 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1794 () (_ BitVec 64))
(declare-fun y1_ack!1795 () (_ BitVec 64))
(declare-fun y2_ack!1796 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1799) ((_ to_fp 11 53) x1_ack!1792)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1792) ((_ to_fp 11 53) x2_ack!1793)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1792)
                       ((_ to_fp 11 53) x0_ack!1799))
               ((_ to_fp 11 53) x0_ack!1799))
       ((_ to_fp 11 53) x1_ack!1792)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1792)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1792)
                       ((_ to_fp 11 53) x0_ack!1799)))
       ((_ to_fp 11 53) x0_ack!1799)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1793)
                       ((_ to_fp 11 53) x1_ack!1792))
               ((_ to_fp 11 53) x1_ack!1792))
       ((_ to_fp 11 53) x2_ack!1793)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1793)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1793)
                       ((_ to_fp 11 53) x1_ack!1792)))
       ((_ to_fp 11 53) x1_ack!1792)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1792)
                    ((_ to_fp 11 53) x0_ack!1799))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1793)
                    ((_ to_fp 11 53) x1_ack!1792))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1797) ((_ to_fp 11 53) b_ack!1798))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1797) ((_ to_fp 11 53) x0_ack!1799))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1798) ((_ to_fp 11 53) x2_ack!1793))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1797) ((_ to_fp 11 53) b_ack!1798))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1797) ((_ to_fp 11 53) x0_ack!1799))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1797) ((_ to_fp 11 53) x1_ack!1792))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1798) ((_ to_fp 11 53) x0_ack!1799)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1792)
                    ((_ to_fp 11 53) x0_ack!1799))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1798)
                                  ((_ to_fp 11 53) x0_ack!1799)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1798)
                                   ((_ to_fp 11 53) x0_ack!1799))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1798)
                                   ((_ to_fp 11 53) x0_ack!1799)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1798)
                           ((_ to_fp 11 53) x0_ack!1799)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1798)
                 ((_ to_fp 11 53) x0_ack!1799)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!1798)
                                  ((_ to_fp 11 53) x0_ack!1799)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1798)
                                   ((_ to_fp 11 53) x0_ack!1799))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1798)
                                   ((_ to_fp 11 53) x0_ack!1799)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1798)
                           ((_ to_fp 11 53) x0_ack!1799)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!1798)
                 ((_ to_fp 11 53) x0_ack!1799)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1796)
                           ((_ to_fp 11 53) y1_ack!1795))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1793)
                                   ((_ to_fp 11 53) x1_ack!1792)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1795)
                           ((_ to_fp 11 53) y0_ack!1794))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1792)
                                   ((_ to_fp 11 53) x0_ack!1799)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1793)
                                   ((_ to_fp 11 53) x1_ack!1792))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1792)
                                   ((_ to_fp 11 53) x0_ack!1799)))))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1797)
                                   ((_ to_fp 11 53) x0_ack!1799))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1797)
                                   ((_ to_fp 11 53) x0_ack!1799)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1798)
                                   ((_ to_fp 11 53) x0_ack!1799))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1798)
                                   ((_ to_fp 11 53) x0_ack!1799))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1792)
                                   ((_ to_fp 11 53) x0_ack!1799))))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd0000000000000)
                           a!5)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1797)
                                   ((_ to_fp 11 53) x0_ack!1799))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1798)
                                   ((_ to_fp 11 53) x0_ack!1799))))))
  (FPCHECK_FMUL_OVERFLOW a!6 a!7))))))

(check-sat)
(exit)
