(declare-fun a_ack!5249 () (_ BitVec 32))
(declare-fun b_ack!5247 () (_ BitVec 32))
(declare-fun c_ack!5248 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!5249 #x00000000)))
(assert (not (bvslt b_ack!5247 a_ack!5249)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!5247)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!5248) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5248) ((_ to_fp 11 53) #x4020000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!5248) ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!5248) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!5248) ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) c_ack!5248))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c7dc75547a9e207))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2)
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x3c7dc75547a9e207)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!6)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3cb080aaec279da4))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #xbcb080aaec279da4))))
      (a!12 (fp.abs (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #xbcb080aaec279da4)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.abs a!8)
                   (fp.abs (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3c7dc75547a9e207)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #x3c7dc75547a9e207)))
                    ((_ to_fp 11 53) #x3ce36fcfb04fab70))))
(let ((a!11 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!10)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!10)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #xbcb080aaec279da4)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ce36fcfb04fab70)))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!11 a!12)
                            ((_ to_fp 11 53) #x3d1881d86da4951c))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) #xbd1881d86da4951c)))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!15)
                                    (fp.abs a!10))
                            ((_ to_fp 11 53) #x3d50b10cafd9fd90))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!15 a!10)
                            ((_ to_fp 11 53) #x3d50b10cafd9fd90)))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.abs a!17)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #xbd1881d86da4951c)))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!17
                            (fp.add roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #xbd1881d86da4951c)))
                    ((_ to_fp 11 53) #xbd88d9739428cf59))))
(let ((a!20 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!19)))
      (a!23 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!19)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!15 a!10)
                            ((_ to_fp 11 53) #x3d50b10cafd9fd90)))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    a!20
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!15 a!10)
                                    ((_ to_fp 11 53) #x3d50b10cafd9fd90)))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            a!23
                            ((_ to_fp 11 53) #x3dc485b9c7ae6caf)))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x3d88d9739428cf59)))
                    (fp.add roundNearestTiesToEven
                            a!21
                            ((_ to_fp 11 53) #x3dc485b9c7ae6caf))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!24 a!19)
                            ((_ to_fp 11 53) #xbe0330e9e355cb2d)))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    a!22
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!24)
                                    (fp.abs a!19))
                            ((_ to_fp 11 53) #x3e0330e9e355cb2d))))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.abs a!26)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x3dc485b9c7ae6caf)))))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!26
                            (fp.add roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #x3dc485b9c7ae6caf)))
                    ((_ to_fp 11 53) #x3e44ea9cce60ab63))))
(let ((a!29 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!28)))
      (a!32 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!28)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!24 a!19)
                            ((_ to_fp 11 53) #xbe0330e9e355cb2d)))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    a!29
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!24 a!19)
                                    ((_ to_fp 11 53) #xbe0330e9e355cb2d)))))
      (a!33 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            a!32
                            ((_ to_fp 11 53) #xbe8bc4d22ee868df)))))
(let ((a!31 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!25
                            (fp.add roundNearestTiesToEven
                                    a!27
                                    ((_ to_fp 11 53) #x3e44ea9cce60ab63)))
                    (fp.add roundNearestTiesToEven
                            a!30
                            ((_ to_fp 11 53) #x3e8bc4d22ee868df))))
      (a!35 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!33 a!28)
                            ((_ to_fp 11 53) #x3ed8359bb4d90134)))))
(let ((a!34 (fp.add roundNearestTiesToEven
                    a!31
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!33)
                                    (fp.abs a!28))
                            ((_ to_fp 11 53) #x3ed8359bb4d90134))))
      (a!36 (fp.add roundNearestTiesToEven
                    (fp.abs a!35)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!32
                                    ((_ to_fp 11 53) #xbe8bc4d22ee868df)))))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!35
                            (fp.add roundNearestTiesToEven
                                    a!32
                                    ((_ to_fp 11 53) #xbe8bc4d22ee868df)))
                    ((_ to_fp 11 53) #xbf3038fb9be6c5aa))))
(let ((a!38 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!37)))
      (a!41 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!37)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!33 a!28)
                            ((_ to_fp 11 53) #x3ed8359bb4d90134)))))
(let ((a!39 (fp.add roundNearestTiesToEven
                    a!38
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!33 a!28)
                                    ((_ to_fp 11 53) #x3ed8359bb4d90134)))))
      (a!42 (fp.abs (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.add roundNearestTiesToEven
                                    a!41
                                    ((_ to_fp 11 53) #x3f9d023ed46952db))))))
(let ((a!40 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!34
                            (fp.add roundNearestTiesToEven
                                    a!36
                                    ((_ to_fp 11 53) #x3f3038fb9be6c5aa)))
                    (fp.add roundNearestTiesToEven
                            a!39
                            ((_ to_fp 11 53) #x3f9d023ed46952db)))))
  (FPCHECK_FADD_UNDERFLOW
    a!40
    (fp.add roundNearestTiesToEven
            (fp.add roundNearestTiesToEven a!42 (fp.abs a!37))
            ((_ to_fp 11 53) #x3fa054be5713184a)))))))))))))))))))))))))

(check-sat)
(exit)
